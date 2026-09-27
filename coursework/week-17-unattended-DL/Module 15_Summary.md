# Module 15: Introduction to Deep Learning — Summary

## Module Overview

- Deep learning is a key subset of machine learning designed to interpret and process complex data structures efficiently.
- Applications of deep learning span domains such as computer vision, natural language processing, and automated decision-making.
- Convolutional neural networks (CNNs) are used in image classification tasks, identifying patterns and features in visual data.
- Recurrent neural networks (RNNs) are suitable for sequential data like text, supporting tasks such as text generation and classification.
- Practical Keras tutorials demonstrate how CNNs and RNNs function, reinforcing the real-world capabilities of deep learning systems.
- Explore applications in computer vision
- Demonstrate CNNs for object classification using Keras
- Examine RNNs for processing sequential text data
- Build a simple RNN model in Keras for text prediction and classification

## What is Deep Learning?

- Deep learning is a subset of machine learning that processes data through multiple layers to automatically learn complex patterns.
- Unlike traditional models, deep learning eliminates manual feature engineering by learning useful representations directly from raw data.
- Each layer in a deep neural network acts as a filter, refining input data into more abstract and meaningful features.
- Rapid growth in computing power, availability of large datasets, and open-source frameworks have accelerated deep learning's adoption.
- Advancements in computing infrastructure: GPUs, TPUs, and cloud platforms enable real-time DL.
- Availability of large datasets: Smartphones and IoT provide data, enabling DL models to improve accuracy.
- Open-source tools and pre-trained models: Frameworks like Keras and TensorFlow make DL accessible.
- Superior performance with large data sets: DL models improve as data volume increases, unlike traditional ML.
- Deep learning models consistently improve with increased data volume, outperforming traditional algorithms in tasks like image and speech recognition.

## Applications of Deep Learning for Computer Vision

- Object detection enables systems to accurately identify and locate multiple objects within images using bounding boxes.
- Identifies multiple objects in an image
- Locates each object with precision
- Uses bounding boxes to highlight detected objects
- Image segmentation allows for precise distinction of individual objects within a scene, essential for applications like autonomous driving.
- It segments objects in images, crucial for tasks like self-driving cars.
- Style transfer and image colouring transform visual aesthetics by applying artistic styles or converting black-and-white images into colour.
- Transfers artistic style from one image to another
- Retains original content while altering appearance
- Widely used in photo filter apps on smartphones
- Image inpainting and super-resolution techniques restore damaged images and enhance low-resolution visuals with realistic details.
- It restores missing or damaged image parts accurately.
- Generative models and image synthesis create entirely new visual content, demonstrating deep learning's ability to replicate and innovate complex imagery.

## Deep Learning for Computer Vision

- Convolutional neural networks (CNNs) are essential for deep learning applications in image search, autonomous vehicles, and classification systems.
- CNNs effectively capture local features in images, enabling them to detect patterns regardless of position or orientation.
- Learns translation-invariant patterns
- Recognises features anywhere in the image
- Identifies objects in different positions and orientations
- Enhances versatility across varied visual scenarios
- Spatial hierarchies in CNNs allow for gradual learning of complex objects by combining simple features into higher-level representations.
- Unlike densely connected networks, CNNs preserve spatial relationships in data, leading to more efficient learning in visual tasks.
- The layered structure of CNNs builds understanding from basic lines to full objects, mirroring human visual recognition processes.

## What is Convolutional Neural Network (CNN)?

- Convolutional neural networks extract visual features using layers of filters and pooling operations, enabling effective image recognition and classification.
- AlexNet introduced multiple convolutional and dense layers, significantly improving performance on image classification tasks using layered feature extraction.
- Convolutional layers apply filters across images to create feature maps, using operations like padding and strides to manage spatial dimensions.
- Pooling layers reduce the spatial size of feature maps using operations like max or average pooling, lowering computation while preserving key features.
- VGGNet, especially VGG16, enhanced CNN depth with repeated convolution-pooling blocks and fully connected layers, improving accuracy for large-scale image datasets.

## Keras Example for Object Classification

- CIFAR-10 dataset provides 60,000 colour images across 10 categories, serving as a practical benchmark for image classification models.
- CNN architecture includes convolutional layers for feature extraction, pooling layers for dimensionality reduction, and dense layers for classification.
- Our CNN consists of three key layers:
- Convolutional layers: Extract features using filters to detect patterns like edges and textures
- Pooling layers: Reduce spatial dimensions, improving efficiency and feature extraction
- Dense layers: Fully connected layers interpret extracted features for classification
- Model compilation uses Adam optimiser and sparse categorical crossentropy loss, suitable for multi-class classification with exclusive class labels.
- Uses Adam optimiser for efficient weight updates
- Uses sparse_categorical_crossentropy for multi-class classification
- `model.fit()` adjusts weights using training data
- Controls the number of samples per gradient update
- Evaluates performance on separate data after each epoch
- Training is monitored using accuracy and loss plots, showing consistent improvement across epochs for both training and validation data.
- Final evaluation demonstrates the model's ability to generalise well to unseen test data, confirming effective learning and minimal overfitting.
- Evaluate model on test set to assess performance
- Visualise training process to track accuracy and loss
- Identify signs of overfitting or underfitting
- "Model Accuracy" plot shows steady improvement in learning
- "Model Loss" plot confirms decreasing loss over epochs
- Indicates effective learning and generalisation to validation data

## Applications of Deep Learning for NLP

- Deep learning enhances search engines by predicting user input and improving result accuracy through contextual understanding of queries.
- Real-time machine translation enables seamless cross-language communication, including instant translation of text from images using mobile devices.
- Sentiment analysis on social media supports targeted advertising by interpreting user emotions across posts in multiple languages.
- Applications such as chatbots, resume screening tools, and document summarisation streamline professional workflows and improve service efficiency.
- Search predictions: Google predicts text for better accuracy and user experience
- Machine translation: Tools like Google Translate provide real-time translation, enabling seamless global communication
- Sentiment analysis: Analyses sentiment in posts to tailor targeted advertising based on user interactions
- Chatbots: AI bots provide human-like assistance across industries
- Voice assistants, grammar tools, and email applications integrate deep learning to automate responses, correct language, and filter spam effectively.

## Deep Learning for NLP, what is RNN and How it Works?

- Natural Language Processing enables machines to interpret and generate human language, powering applications like search engines, voice assistants, and real-time captioning.
- Document classification: NLP models aid in quickly filtering and summarising documents, such as resumes, for hiring managers
- Voice assistants: Siri, Google Assistant and Alexa process speech for real-time responses
- Grammar enhancement: Grammarly improves writing by correcting grammar and style
- Email optimisation: Gmail filters spam and suggests responses for efficiency
- Recurrent Neural Networks (RNNs) are designed to process sequential data by maintaining short-term memory through feedback loops between time steps.
- Sequential data processing: RNNs are designed for processing sequences, such as language or time series data, by maintaining memory over time.
- Predictive ability: RNNs predict the next element in a sequence based on previous inputs, using feedback from each step as input for the next.
- Memory effect: RNNs recycle outputs back into the network, enabling them to remember previous data and make informed predictions.
- Handling variable-length sequences: RNNs process variable-length input sequences, crucial for tasks like language translation or speech recognition where context matters.
- RNNs face limitations with long-term dependencies due to the vanishing gradient problem, making them less effective for tasks requiring distant contextual understanding.
- Sequential data processing: RNNs process data step-by-step, passing outputs from one time step to the next to retain context
- Short-term dependencies: RNNs excel at remembering and utilising short-term dependencies in sequences, as seen in predicting the next word in a sentence
- Long-term dependency limitation: RNNs struggle with long-term dependencies, failing to retain information from earlier in long sequences
- Vanishing gradient problem: The vanishing gradient problem limits RNNs' ability to maintain long-term dependencies, reducing their effectiveness over long sequences
- Long Short-Term Memory (LSTM) networks improve upon RNNs by incorporating memory cells and gates that manage information flow across longer sequences.
- Text must be converted into numerical form for deep learning using techniques like one-hot encoding or word embeddings that capture semantic relationships in compact vectors.

## Keras Example for Text Classification

- The IMDB dataset is used for sentiment analysis, containing movie reviews labelled as either positive or negative.
- Pre-processing includes restricting vocabulary size and padding sequences to ensure uniform input length for LSTM layers.
- The model architecture features an embedding layer followed by an LSTM layer and a sigmoid-activated output for binary classification.
- Parameters like embedding dimension, batch size, and number of epochs are defined to optimise training and model performance.
- Evaluation on test data reveals model accuracy and loss, offering insights into generalisation capability on unseen reviews.

## Module Summary

- Deep learning surpasses traditional machine learning by automatically extracting features from large-scale unstructured data without manual engineering.
- Advances in hardware, data availability and training algorithms have fueled the rise of deep neural networks capable of complex representation learning.
- Deep learning automates feature extraction and handling unstructured data efficiently.
- Advances in computational power have fueled the rise of deep learning.
- The availability of large datasets enables better model training and performance.
- Improved training algorithms allow deep neural networks to learn complex representations.
- Convolutional neural networks (CNNs) are central to computer vision tasks, using layered architecture for image classification and feature extraction.
- Recurrent neural networks (RNNs) and long short-term memory (LSTM) models effectively handle sequential data for tasks like sentiment analysis and text classification.
- Keras tutorials demonstrate practical implementation of CNNs with CIFAR-10 and LSTMs with IMDB dataset, showcasing training workflows and model capabilities.

THE END
