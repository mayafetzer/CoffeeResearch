import gradio as gr
import pickle
import numpy as np
from sklearn.preprocessing import StandardScaler

# Load models
with open('best_model_bayes.pkl', 'rb') as f:
    best_model_bayes = pickle.load(f)

# Load the pre-fitted scaler
with open('scaler.pkl', 'rb') as f:
    scaler = pickle.load(f)

# Define the actual output range (replace with the true range of your data)
output_min, output_max = 0, 100  # Replace with your actual denormalization values

def denormalize(value, min_val, max_val):
    return value * (max_val - min_val) + min_val

def predict(Moisture, CO2, Aroma, Acidity, Oxidation, Oils, Roast_Level):

    # Encode the Roast Level as numerical value
    roast_level_encoded = 0 if Roast_Level == "13.5%" else 1

    # Prepare the input array with the new variables
    input_array = np.array([[Moisture, CO2, Aroma, Acidity, Oxidation, Oils, roast_level_encoded]])

    # Scale input values using the loaded, pre-fitted scaler
    input_scaled = scaler.transform(input_array)

    # Make prediction using the best model
    normalized_output = best_model_bayes.predict(input_scaled)[0]

    # Denormalize the prediction to reflect time
    time_output = denormalize(normalized_output, output_min, output_max)

    return round(time_output, 2)  # Rounded for readability

# Create the Gradio interface with sliders for each input variable
iface = gr.Interface(
    fn=predict,
    inputs=[
        gr.components.Slider(0, 1, step=0.01, label="Moisture (%)"),
        gr.components.Slider(0, 1, step=0.01, label="CO2 (ppm)"),
        gr.components.Slider(0, 1, step=0.01, label="Aroma"),
        gr.components.Slider(0, 1, step=0.01, label="Acidity"),
        gr.components.Slider(0, 1, step=0.01, label="Oxidation"),
        gr.components.Slider(0, 1, step=0.01, label="Oil Expression"),
        gr.components.Dropdown(choices=["13.5%", "20.7%"], label="Roast Level"),
    ],
    outputs=gr.components.Label(label="Time to reach target freshness (days)"),
    title="Coffee Freshness Prediction Model",
    description="Adjust the sliders and select the roast level to predict time. A value closer to 0 means more fresh while a value closer to 1 means less fresh.",
)

# Launch the interface
if __name__ == "__main__":
    iface.launch()
