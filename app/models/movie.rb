class Movie < ApplicationRecord
    fetch("/movies", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(formData),
      }).then((response) => console.log(response));
      end
      function MovieForm() {
  const [errors, setErrors] = useState([]);
  // rest of component code
}
.then((response) => {
  if (response.ok) {
    response.json().then((newMovie) => console.log(newMovie));
  } else {
    response.json().then((errorData) => setErrors(errorData.errors));
  }
})
// In the JSX returned by MovieForm:

<form onSubmit={handleSubmit}>
  {/* rest of form elements here... */}

  {errors.length > 0 && (
    <ul style={{ color: "red" }}>
      {errors.map((error) => (
        <li key={error}>{error}</li>
      ))}
    </ul>
  )}
  <SubmitButton type="submit">Add Movie</SubmitButton>
</form>

        CATEGORIES = ['Comedy', 'Drama', 'Animation', 'Mystery', 'Horror', 'Fantasy', 'Action', 'Documentary', 'Science Fiction']
      
        validates :title, presence: true
        validates :year, numericality: {
          greater_than_or_equal_to: 1888,
          less_than_or_equal_to: Date.today.year
        }
        validates :poster_url, presence: true
        validates :category, inclusion: {
          in: CATEGORIES,
          message: "must be one of: #{CATEGORIES.join(', ')}"
        }
      
      
end
