" Define a function to insert the Golang test template
function! InsertGolangTestTemplate()
  " Define your Golang test template
  let golang_test_template = "import (\n\t\"testing\"\n\n\t\"github.com/stretchr/testify/suite\"\n)\n\nfunc TestTennisSuite(t *testing.T) {\n\tsuite.Run(t, new(TennisSuite))\n}\n\ntype TennisSuite struct {\n\tsuite.Suite\n}\n\nfunc (suite *TennisSuite) SetupTest() {\n}\n\nfunc (suite *TennisSuite) TestSomething() {\n\n}"

  " Insert the template at the current cursor position
  execute "normal! i" . golang_test_template

  " Move the cursor to a suitable location within the template
  normal! kkkk
endfunction

" Map the function to the zgt key combination
nnoremap zgt :call InsertGolangTestTemplate()<CR>

