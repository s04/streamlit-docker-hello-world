import streamlit as st
import pandas as pd

def main():
    st.title("Hello World Streamlit App")
    
    # Read CSV file
    df = pd.read_csv('data/cities.csv')
    
    # Display the DataFrame
    st.write("Here is the data from the CSV file:")
    st.dataframe(df)

if __name__ == "__main__":
    main()
