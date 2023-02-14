import pygame
import time
pygame.init()

# Initialises the variable used for the main game loop
running = True

# Creates a display object
main_window = pygame.display.set_mode((1, 1))
# Imports the image and converts it to prevent reading errors
img = pygame.image.load("pic.jpg").convert()
main_window = pygame.display.set_mode((img.get_width(), img.get_height()))
pygame.display.set_caption("Simulating Colourblindness")

# Red blind
PROTANOPIA = [[56.667, 43.333, 0], [55.833, 44.167, 0], [0, 24.167, 75.833]]
# Red weakness
PROTANOMALY = [[81.667, 18.333, 0], [33.333, 66.667, 0], [0, 12.5, 87.5]]

# Green blind
DEUTERANOPIA = [[62.5, 37.5, 0], [70, 30, 0], [0, 14.167, 85.833]]
# Green weakness
DEUTERANOMALY = [[80, 20, 0], [25.883, 74.167, 0], [0, 14.167, 85.833]]

# Blue blind
TRITANOPIA = [[95, 5, 0], [0, 43.333, 56.667], [0, 47.5, 52.5]]
# Blue weakness
TRITANOMALY = [[96.667, 3.333, 0], [0, 73.333, 26.667], [0, 18.333, 81.667]]

# Full color blindness (monochrome)
ACHROMATOPSIA = [[29.9, 58.7, 11.4], [29.9, 58.7, 11.4], [29.9, 58.7, 11.4]]
# Full Color weakness
ACHROMATANOMALY = [[61.8, 32, 6.2], [16.3, 77.5,  6.2], [16.3, 32.0, 51.6]]

# Initialises the variable for the processed images with the unedited image
img_processed = img
# Dictionary of every colour matrix using the output file name as a key
processing = {"protanopia.jpg": PROTANOPIA,
              "protanomaly.jpg": PROTANOMALY,
              "deutaranopia.jpg": DEUTERANOPIA,
              "deutaranomaly.jpg": DEUTERANOMALY,
              "tritanopia.jpg": TRITANOPIA,
              "tritanomaly.jpg": TRITANOMALY,
              "achromatopsia.jpg": ACHROMATOPSIA,
              "achromatanomaly.jpg": ACHROMATANOMALY}

# The list and int variables required to iterate through the images shown in the game window
processing_keys = []
image_to_show = 0


# Adjusts colour values by appropriate matrix
def colorblind(colour_matrix):
    """
    Takes img and creates a new surface with the same img after the values are changed to simulate colorblindness.
    Keyword arguments:
    colour_matrix -- the matrix of the colorblindness type to simulate
    """

    for x in range(img.get_width()):
        for y in range(img.get_height()):
            # Gets the RGB colour value of the pixel
            pixel_input = img.get_at((x, y))

            # Gives the RGB values of the pixel their own variables for readability
            pixel_r = pixel_input[0]
            pixel_g = pixel_input[1]
            pixel_b = pixel_input[2]

            # Adjusts the RGB values of each individual pixel to the RGB values of the correct impairment
            pixel_r = int((pixel_r * colour_matrix[0][0] / 100) +
                          (pixel_g * colour_matrix[0][1] / 100) +
                          (pixel_b * colour_matrix[0][2] / 100))

            pixel_g = int((pixel_r * colour_matrix[1][0] / 100) +
                          (pixel_g * colour_matrix[1][1] / 100) +
                          (pixel_b * colour_matrix[1][2] / 100))

            pixel_b = int((pixel_r * colour_matrix[2][0] / 100) +
                          (pixel_g * colour_matrix[2][1] / 100) +
                          (pixel_b * colour_matrix[2][2] / 100))

            # Adds the color-adjusted pixel to the output surface
            img_processed.set_at((x, y), (pixel_r, pixel_g, pixel_b))


# Run image through each colorblindness adjustment
# Save each return as a new image
def image_processing():
    """
    Calls the "colorblind function" for each of the color matrices in the "processing" dictionary
    """

    for file_name, color_matrix in processing.items():
        colorblind(color_matrix)
        pygame.image.save(img_processed, file_name)


# Copies original image onto display
main_window.blit(img, (0, 0))
image_processing()

# Appends every key in the "processing" dictionary to the "processing_keys" variable
for key in processing.keys():
    processing_keys.append(key)

while running:
    # Updates the display window every second with each processed image in sequence
    time.sleep(1)
    main_window.blit(pygame.image.load(processing_keys[image_to_show]).convert(), (0, 0))
    # Cycles through the length of the list
    if image_to_show < len(processing_keys) - 1:
        image_to_show += 1
    else:
        image_to_show = 0

    pygame.display.update()
    # Tracks every event that happens while the program is running
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
            pygame.quit()